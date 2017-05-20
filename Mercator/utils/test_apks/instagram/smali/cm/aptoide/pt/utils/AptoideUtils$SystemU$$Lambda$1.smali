.class final synthetic Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;

    invoke-direct {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;->instance:Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;->instance:Lcm/aptoide/pt/utils/AptoideUtils$SystemU$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/permissions/ApkPermission;

    check-cast p2, Lcm/aptoide/pt/permissions/ApkPermission;

    invoke-static {p1, p2}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->lambda$parsePermissions$0(Lcm/aptoide/pt/permissions/ApkPermission;Lcm/aptoide/pt/permissions/ApkPermission;)I

    move-result v0

    return v0
.end method
