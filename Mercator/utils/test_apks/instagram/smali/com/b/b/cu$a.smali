.class final Lcom/b/b/cu$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cu;


# direct methods
.method constructor <init>(Lcom/b/b/cu;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/b/b/cu$a;->a:Lcom/b/b/cu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/b/b/cu$a;->a:Lcom/b/b/cu;

    invoke-virtual {v0}, Lcom/b/b/cu;->a()V

    .line 23
    new-instance v0, Lcom/b/b/cv;

    invoke-direct {v0}, Lcom/b/b/cv;-><init>()V

    .line 1025
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bq;->a(Lcom/b/b/bo;)V

    .line 25
    return-void
.end method
