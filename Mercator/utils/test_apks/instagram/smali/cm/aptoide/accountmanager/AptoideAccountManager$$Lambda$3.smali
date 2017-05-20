.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/content/Context;

.field private final arg$4:Lcm/aptoide/accountmanager/ws/LoginMode;

.field private final arg$5:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$3:Landroid/content/Context;

    iput-object p4, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$4:Lcm/aptoide/accountmanager/ws/LoginMode;

    iput-object p5, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$5:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 6

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$3:Landroid/content/Context;

    iget-object v3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$4:Lcm/aptoide/accountmanager/ws/LoginMode;

    iget-object v4, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$3;->arg$5:Landroid/app/ProgressDialog;

    move-object v5, p1

    check-cast v5, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    invoke-static/range {v0 .. v5}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$loginUserCredentials$6(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/accountmanager/ws/LoginMode;Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V

    return-void
.end method
