TERMUX_PKG_HOMEPAGE="https://github.com/epi052/feroxbuster"
TERMUX_PKG_DESCRIPTION="A fast, simple, recursive content discovery tool written in Rust"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.9.4"
TERMUX_PKG_SRCURL="https://github.com/epi052/feroxbuster/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=10e9ac6e0496c97c5a983d4431be05451e0e5c682dea04cd1a8842e563773a0f
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="openssl"

termux_step_post_get_source() {
	sed -i -E '/^openssl\s*=/s/(,\s*)?"vendored"//g' Cargo.toml
}

termux_step_pre_configure() {
	rm -f Makefile
}

termux_step_post_make_install() {
	# shell completions
	install -Dm644 "$TERMUX_PKG_SRCDIR/shell_completions/feroxbuster.bash" \
		"$TERMUX_PREFIX"/share/bash-completion/completions/feroxbuster
	install -Dm644 "$TERMUX_PKG_SRCDIR/shell_completions/_feroxbuster" \
		"$TERMUX_PREFIX"/share/zsh/site-functions/_feroxbuster
	install -Dm644 "$TERMUX_PKG_SRCDIR/shell_completions/feroxbuster.fish" \
		"$TERMUX_PREFIX"/share/fish/vendor_completions.d/feroxbuster.fish
}
