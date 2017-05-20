.class final synthetic Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

.field private final arg$2:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/AutoUpdate;->lambda$requestUpdateSelf$5(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
