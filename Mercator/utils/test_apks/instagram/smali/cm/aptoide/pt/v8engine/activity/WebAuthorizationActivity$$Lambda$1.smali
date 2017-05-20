.class final synthetic Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
