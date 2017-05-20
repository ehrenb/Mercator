.class public final Lcom/google/gson/b/j;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public static a(Lcom/google/gson/i;Lcom/google/gson/stream/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/gson/b/a/m;->X:Lcom/google/gson/o;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/o;->a(Lcom/google/gson/stream/c;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
