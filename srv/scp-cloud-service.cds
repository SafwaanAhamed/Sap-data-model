using scp.cloud as my from '../db/schema';

service ScpCloudService {
	@readonly entity DataEntity as projection on my.DataEntity;
	@readonly entity RequestTypes as projection on my.RequestTypes;
	@readonly entity Country as projection on my.Country;
	@readonly entity GlobalRegion as projection on my.GlobalRegion;
	@readonly entity Priority as projection on my.Priority;
}