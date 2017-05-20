.class final synthetic Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;->arg$1:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;->arg$1:Landroid/content/Context;

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->lambda$showShareCardPreviewDialog$9(Landroid/content/Context;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
