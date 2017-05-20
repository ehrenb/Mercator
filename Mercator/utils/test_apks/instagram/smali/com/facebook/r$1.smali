.class Lcom/facebook/r$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/r;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/j$b;

.field final synthetic b:Lcom/facebook/r;


# direct methods
.method constructor <init>(Lcom/facebook/r;Lcom/facebook/j$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/r$1;->b:Lcom/facebook/r;

    iput-object p2, p0, Lcom/facebook/r$1;->a:Lcom/facebook/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/r$1;->a:Lcom/facebook/j$b;

    iget-object v1, p0, Lcom/facebook/r$1;->b:Lcom/facebook/r;

    .line 80
    invoke-static {v1}, Lcom/facebook/r;->a(Lcom/facebook/r;)Lcom/facebook/j;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/r$1;->b:Lcom/facebook/r;

    .line 81
    invoke-static {v2}, Lcom/facebook/r;->b(Lcom/facebook/r;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/r$1;->b:Lcom/facebook/r;

    .line 82
    invoke-static {v4}, Lcom/facebook/r;->c(Lcom/facebook/r;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/facebook/j$b;->a(Lcom/facebook/j;JJ)V

    .line 83
    return-void
.end method
