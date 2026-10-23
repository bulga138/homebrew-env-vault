class EnvVault < Formula
  desc "Secure .env file manager with encryption and version control integration"
  homepage "https://github.com/bulga138/env-vault"
  head "https://github.com/bulga138/env-vault.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "env-vault", shell_output("#{bin}/env-vault")
  end
end
