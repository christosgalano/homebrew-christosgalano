# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BicepDocs < Formula
  desc "Command-line tool to generate documentation for Bicep templates"
  homepage "https://github.com/christosgalano/bicep-docs"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.1/bicep-docs_darwin_arm64.tar.gz"
      sha256 "705979271447c78bea8897e1e5cd2e1bbb2a46d22632bbfadbc6236cde407e17"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.1/bicep-docs_darwin_amd64.tar.gz"
      sha256 "197abbdcf19210f9d83f654c8f07493cc2cb8ec1fe8e31bab93717b5c5d36187"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.1/bicep-docs_linux_arm64.tar.gz"
      sha256 "018cba40a70b362a36dffd2ca2fab18a7e2250a66ac41a989d56a42ee1f33460"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.1/bicep-docs_linux_arm.tar.gz"
      sha256 "b82bca8e0c5efe2cf0e369ecaad959942e34427f82ae098c04c6842e197e8c77"

      def install
        bin.install "bicep-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/christosgalano/bicep-docs/releases/download/v1.1.1/bicep-docs_linux_amd64.tar.gz"
      sha256 "8eaf2b36890c275fe705978221788133479ec75ef36d00e9b2d613af40ff521d"

      def install
        bin.install "bicep-docs"
      end
    end
  end

  test do
    system "#{bin}/bicep-docs", "--help"
  end
end
