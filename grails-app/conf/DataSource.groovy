/*
 To use MyISAM, your configuration will look like this:
 dataSource {
 pooled = true
 driverClassName = "com.mysql.jdbc.Driver"
 dialect = 'org.hibernate.dialect.MySQL5Dialect'
 }
 To use InnoDB, your configuration should look like:
 dataSource {
 pooled = true
 driverClassName = "com.mysql.jdbc.Driver"
 dialect = 'org.hibernate.dialect.MySQL5InnoDBDialect'
 }
 */

dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	url = "jdbc:mysql://localhost:3306/sart?useUnicode=yes&characterEncoding=UTF-8"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
			username = "sart_admin"
			password = "sart+admin-p@55w0rd"
			logSql = true
			formatSql = true
		}
	}
	test {
		dataSource {
			username = "sart_admin"
			password = "sart+admin-p@55w0rd"
			pooled = true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			}
		}
	}
	production {
		dataSource {
			url = "jdbc:mysql://ec2-54-217-200-162.eu-west-1.compute.amazonaws.com:3306/dfkr2abf1p49ju?useUnicode=yes&characterEncoding=UTF-8"
			username = "jihjrrffsqutyu"
			password = "61e99482763f26f08b85dd84c6622c6dc341c3f3a2232158e72780b9e3d1b693"
			//password = "S6+a0hn9wyOiBS/nt/iB9Q=="
			//passwordEncryptionCodec = DESCodec
			pooled = true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			}
		}
	}
}
