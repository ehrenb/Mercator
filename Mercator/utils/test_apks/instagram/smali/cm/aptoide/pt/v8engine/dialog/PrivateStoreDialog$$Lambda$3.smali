.class final synthetic Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;->arg$2:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;Landroid/view/View;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;->arg$2:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->lambda$null$1(Landroid/view/View;Ljava/lang/Throwable;)V

    return-void
.end method
