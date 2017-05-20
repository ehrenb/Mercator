.class final synthetic Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;->arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;

    iput-object p2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;->arg$2:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;-><init>(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;->arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->lambda$onCreateSuccess$51(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V

    return-void
.end method
