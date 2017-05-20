.class final Lcom/a/a/c/x$f;
.super Lcom/a/a/c/x$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/c/x$l;Lcom/a/a/c/x$k;Lcom/a/a/c/x$k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/c/x$j;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/a/a/c/x$j;-><init>(I[Lcom/a/a/c/x$j;)V

    .line 303
    return-void
.end method
