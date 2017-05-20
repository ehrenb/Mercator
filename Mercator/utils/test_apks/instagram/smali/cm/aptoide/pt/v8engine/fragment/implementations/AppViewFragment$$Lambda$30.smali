.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$30;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->lambda$null$21(Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
