.class final synthetic Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Landroid/support/v7/a/d$a;

.field private final arg$2:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$1:Landroid/support/v7/a/d$a;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$5:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)Lrx/d$a;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;-><init>(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$1:Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->arg$5:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    move-object v5, p1

    check-cast v5, Lrx/j;

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->lambda$showShareCardPreviewDialog$8(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V

    return-void
.end method
