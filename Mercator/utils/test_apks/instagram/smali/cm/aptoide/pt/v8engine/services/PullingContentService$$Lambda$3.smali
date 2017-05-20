.class final synthetic Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/services/PullingContentService;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$2:Landroid/content/Context;

    iput p3, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/services/PullingContentService;Landroid/content/Context;I)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/services/PullingContentService;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/services/PullingContentService;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$2:Landroid/content/Context;

    iget v2, p0, Lcm/aptoide/pt/v8engine/services/PullingContentService$$Lambda$3;->arg$3:I

    check-cast p1, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/services/PullingContentService;->lambda$setPushNotificationsAction$2(Landroid/content/Context;ILcm/aptoide/pt/model/v3/GetPushNotificationsResponse;)V

    return-void
.end method
