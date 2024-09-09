from protos.model.entityType_pb2 import EntityType

print(EntityType.USER)

from protos.rank.routeDefinition_pb2 import Entity

from protos.rank.service_pb2_grpc import Ranker

print(Entity(entity_id="this", reasons="yes"))

print(Ranker().RankEntities())
