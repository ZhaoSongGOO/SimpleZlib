Pod::Spec.new do |spec|
  spec.name = 'SimpleZlib'
  spec.version = '0.0.1'
  spec.license = { :type => 'MIT' }
  spec.homepage = 'git@github.com:ZhaoSongGOO/SimpleZlib.git'
  spec.summary = 'SimpleZlib module'
  spec.authors = 'SimpleZlib'
  spec.source = { :git => 'git@github.com:ZhaoSongGOO/SimpleZlib.git' }
  spec.module_name = 'SimpleZlib'
  spec.header_dir = 'SimpleZlib'

  spec.public_header_files = "SimpleZlib.h"

  spec.private_header_files =   "zlib/chromeconf.h", 
                                "zlib/contrib/optimizations/insert_string.h", 
                                "zlib/cpu_features.h", 
                                "zlib/crc32.h", 
                                "zlib/deflate.h", 
                                "zlib/gzguts.h", 
                                "zlib/inffast.h", 
                                "zlib/inffixed.h", 
                                "zlib/inflate.h", 
                                "zlib/inftrees.h", 
                                "zlib/trees.h", 
                                "zlib/zconf.h", 
                                "zlib/zlib.c", 
                                "zlib/zutil.h"

  spec.source_files =   "SimpleZlib.h",
                        "SimpleZlib.mm",
                        "zlib/adler32.c", 
                        "zlib/chromeconf.h", 
                        "zlib/compress.c", 
                        "zlib/contrib/optimizations/insert_string.h", 
                        "zlib/cpu_features.c", 
                        "zlib/cpu_features.h", 
                        "zlib/crc32.c", 
                        "zlib/crc32.h", 
                        "zlib/deflate.c", 
                        "zlib/deflate.h", 
                        "zlib/gzclose.c", 
                        "zlib/gzguts.h", 
                        "zlib/gzlib.c", 
                        "zlib/gzread.c", 
                        "zlib/gzwrite.c", 
                        "zlib/infback.c", 
                        "zlib/inffast.c", 
                        "zlib/inffast.h", 
                        "zlib/inffixed.h", 
                        "zlib/inflate.c", 
                        "zlib/inflate.h", 
                        "zlib/inftrees.c", 
                        "zlib/inftrees.h", 
                        "zlib/trees.c", 
                        "zlib/trees.h", 
                        "zlib/uncompr.c", 
                        "zlib/zconf.h", 
                        "zlib/zlib.h", 
                        "zlib/zutil.c", 
                        "zlib/zutil.h"

  spec.compiler_flags = '-Wno-unreachable-code'
  spec.user_target_xcconfig = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/SimpleZlib\"" }
  spec.ios.deployment_target = "10.0"
end
