.class final synthetic Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/CreateUserActivity;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;->arg$1:Lcm/aptoide/accountmanager/CreateUserActivity;

    iput-object p2, p0, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;->arg$2:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;-><init>(Lcm/aptoide/accountmanager/CreateUserActivity;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;->arg$1:Lcm/aptoide/accountmanager/CreateUserActivity;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateUserActivity$$Lambda$10;->arg$2:Landroid/app/ProgressDialog;

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/accountmanager/CreateUserActivity;->lambda$handleCreateButtonClick$11(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V

    return-void
.end method
