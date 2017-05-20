.class final synthetic Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;->arg$1:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback$$Lambda$1;->arg$1:Landroid/app/Activity;

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/FacebookLoginUtils$FacebookLoginCallback;->lambda$askForMailAgain$0(Landroid/app/Activity;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
