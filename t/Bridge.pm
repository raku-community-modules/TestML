use v6;

module Bridge;

our sub uppercase($this) {
    return $this.value.uc;
}

our sub my_thing($this) {
    my $str = $this.value.=subst(/\n$/, "");
    return $str.split("\n").join(' - ');
}

our sub combine($this, $suffix) {
    return $this.value ~ ' ' ~ $suffix.value;
}