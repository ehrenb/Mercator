.class final synthetic Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;->arg$2:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->lambda$startFromPackageName$0(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method
