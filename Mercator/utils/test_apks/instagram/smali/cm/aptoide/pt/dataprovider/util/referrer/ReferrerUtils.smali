.class public Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;
.super Ljava/lang/Object;
.source "ReferrerUtils.java"


# static fields
.field public static final RETRIES:I = 0x2

.field public static final TIME_OUT:I = 0x5

.field public static final excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

.field protected static final executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;-><init>()V

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;->excludedNetworks:Lcm/aptoide/pt/dataprovider/util/referrer/ReferrersMap;

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/referrer/ReferrerUtils;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
