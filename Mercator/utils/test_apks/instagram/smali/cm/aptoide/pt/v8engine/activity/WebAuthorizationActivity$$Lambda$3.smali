.class final synthetic Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Authorization;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->lambda$onCreate$2(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    return-void
.end method
