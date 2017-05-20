.class final synthetic Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/InstalledIntentService;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/install/InstalledIntentService;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$3:Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/install/InstalledIntentService;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->arg$3:Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;

    check-cast p1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->lambda$checkAndBroadcastReferrer$5(Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;Lcm/aptoide/pt/database/realm/StoredMinimalAd;)V

    return-void
.end method
