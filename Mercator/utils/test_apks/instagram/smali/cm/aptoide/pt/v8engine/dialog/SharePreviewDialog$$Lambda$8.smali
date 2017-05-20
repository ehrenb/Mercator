.class final synthetic Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

.field private final arg$5:Lrx/j;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$5:Lrx/j;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;-><init>(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->arg$5:Lrx/j;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->lambda$null$5(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V

    return-void
.end method
