.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;->arg$1:J

    return-void
.end method

.method public static lambdaFactory$(J)Lrx/b/e;
    .locals 2

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$26;->arg$1:J

    check-cast p1, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->lambda$setupObservables$30(JLcm/aptoide/pt/database/realm/Store;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
