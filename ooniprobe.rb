require 'formula'

class OoniProbe < Formula
  homepage 'https://github.com/TheTorProject/ooni-probe'
  url 'https://github.com/TheTorProject/ooni-probe/archive/v1.0.0-rc6.tar.gz'
  sha1 'c246d58796340d143d07e41518f52a63d1370fd1'

  depends_on :python => 'argparse'
  depends_on :python => 'docutils'
  depends_on :python => 'ipaddr'
  depends_on :python => 'geoip'
  depends_on :python => 'repoze.sphinx.autointerface'
  depends_on :python => 'txsocksx'
  depends_on :python => 'storm'
  depends_on :python => 'transaction'
  depends_on :python => 'txtorcon'
  depends_on :python => 'wsgiref'
  depends_on :python => 'zope.component'
  depends_on :python => 'zope.event'
  depends_on :python => 'zope.interface'
  depends_on :python => 'Pyrex'
  depends_on :python => ['dns' => 'dnspython']
  depends_on :python => 'twisted'
  depends_on :python => 'pygments'
  depends_on :python => ['yaml' =>'PyYAML']
  depends_on :python => ['OpenSSL' => 'pyOpenSSL']

  depends_on 'geoip'
  depends_on 'libdnet'
  depends_on 'scapy'
  depends_on 'pypcap'

  def install
    python do
      system python, 'setup.py', 'install', "--prefix=#{prefix}",
                     "--record=installed.txt",  "--single-version-externally-managed"
    end
  end

  def caveats
    python.standard_caveats if python
  end

end
