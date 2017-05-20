.class final Lcom/a/a/c/x$h;
.super Lcom/a/a/c/x$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field a:Lcom/a/a/c/a;


# direct methods
.method public constructor <init>(Lcom/a/a/c/a;)V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/c/x$j;

    invoke-direct {p0, v0, v1}, Lcom/a/a/c/x$j;-><init>(I[Lcom/a/a/c/x$j;)V

    .line 265
    iput-object p1, p0, Lcom/a/a/c/x$h;->a:Lcom/a/a/c/a;

    .line 266
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/x$h;->a:Lcom/a/a/c/a;

    invoke-static {v0, v1}, Lcom/a/a/c/d;->b(ILcom/a/a/c/a;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/a/c/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/x$h;->a:Lcom/a/a/c/a;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/d;->a(ILcom/a/a/c/a;)V

    .line 276
    return-void
.end method
