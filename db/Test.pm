package Test::db::Test;

use strict;
use parent qw(dbcore);
use Abills::Base qw(_bp);
#**********************************************************
=head2 new($db, $admin, \%conf) - Constructor for Test

=cut
#**********************************************************
sub new {
  my ($class, $db, $admin, $CONF) = @_;
  my $self = {
    db    => $db,
    admin => $admin,
    conf  => $CONF
  };
  bless($self, $class);
  return $self;
}
#**************************************************************
=head2 get_users()  -Get info about all users

=cut
#**************************************************************
sub get_users {
  my $self = shift;
  my ($attr) = @_;

  my $SORT      = ($attr->{SORT})      ? $attr->{SORT}      : 1;
  my $DESC      = ($attr->{DESC})      ? $attr->{DESC}      : '';
  my $PG        = ($attr->{PG})        ? $attr->{PG}        : 0;
  my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? $attr->{PAGE_ROWS} : 25;

  $self->query(
    "SELECT id,pip,email,address,login,cell FROM user_info 
    ORDER BY $SORT $DESC LIMIT $PG, $PAGE_ROWS;",
    undef, { COLS_NAME => 1 }
  );

  my $list = $self->{list};

  $self->query("SELECT COUNT(*) AS total  FROM user_info", undef, { INFO => 1 });

  return $list;
}
#**************************************************************
=head2 user_add()  -ADD user to DB

=cut
#**************************************************************
sub user_add {
  my $self = shift;
  my ($attr) = @_;
  $self->query_add('user_info', $attr);
  return $self;
}
#**************************************************************
=head2 user_info()  -Get user info
=cut
#**************************************************************
sub user_info {
  my $self = shift;
  my ($id, $attr) = @_;
  $self->query("SELECT id,pip,email,address,login,password,cell FROM user_info WHERE id = '$id';", 
  undef, { INFO => 1 });
  return $self;
}
#**************************************************************
=head2 user_change()  -Change user info

=cut
#**************************************************************
sub user_change {
  my $self = shift;
  my ($attr) = @_;
  $self->changes(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'user_info',
      DATA         => $attr
    }
  );
  return $self;
}
#**************************************************************
=head2 user_del()  -Delete user from DB

=cut
#**************************************************************
sub user_del {
  my $self = shift;
  my ($id) = @_;

  $self->query_del('user_info', { ID => $id });

  return $self;
}
1;