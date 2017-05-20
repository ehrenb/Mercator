.class final Lcom/a/a/c/x$i;
.super Lcom/a/a/c/x$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-array v0, v1, [Lcom/a/a/c/x$j;

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/x$j;-><init>(I[Lcom/a/a/c/x$j;)V

    .line 156
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/a/a/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method
