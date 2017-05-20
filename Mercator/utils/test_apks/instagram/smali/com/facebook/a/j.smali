.class Lcom/facebook/a/j;
.super Ljava/lang/Object;
.source "FlushStatistics.java"


# instance fields
.field public a:I

.field public b:Lcom/facebook/a/i;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/j;->a:I

    .line 25
    sget-object v0, Lcom/facebook/a/i;->a:Lcom/facebook/a/i;

    iput-object v0, p0, Lcom/facebook/a/j;->b:Lcom/facebook/a/i;

    return-void
.end method
