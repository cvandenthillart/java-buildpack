# Encoding: utf-8
# Cloud Foundry Java Buildpack
# Copyright (c) 2013 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'java_buildpack/util/play/pre22'

module JavaBuildpack
  module Util
    module Play

      # Encapsulate inspection and modification of Play staged applications up to and including Play 2.1.x.
      class Pre22Staged < Pre22

        protected

        # @macro base_augment_classpath
        def augment_classpath
          @droplet.additional_libraries.link_to lib_dir
        end

        # @macro base_java_opts
        def java_opts
          @droplet.java_opts
        end

        # @macro base_lib_dir
        def lib_dir
          root + 'staged'
        end

        # @macro pre22_root
        def root
          @droplet.root
        end

      end

    end
  end
end
