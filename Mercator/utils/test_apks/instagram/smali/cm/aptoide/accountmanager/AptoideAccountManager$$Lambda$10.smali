.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

.field private final arg$2:Landroid/app/ProgressDialog;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

    iput-object p2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$2:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;-><init>(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$2:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$10;->arg$4:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/OAuth;

    invoke-static {v0, v1, v2, v3, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$registerUserUsingWebServices$12(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/accountmanager/ws/responses/OAuth;)V

    return-void
.end method
