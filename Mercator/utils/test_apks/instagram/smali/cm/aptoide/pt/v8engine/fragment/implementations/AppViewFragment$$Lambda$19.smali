.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetApp;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;->arg$1:Lcm/aptoide/pt/model/v7/GetApp;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetApp;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;-><init>(Lcm/aptoide/pt/model/v7/GetApp;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$19;->arg$1:Lcm/aptoide/pt/model/v7/GetApp;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->lambda$manageOrganicAds$19(Lcm/aptoide/pt/model/v7/GetApp;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/GetApp;

    move-result-object v0

    return-object v0
.end method
