.class final Lcom/a/a/c/x$e;
.super Lcom/a/a/c/x$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(JLjava/lang/String;[Lcom/a/a/c/x$j;)V
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0xa

    invoke-direct {p0, v0, p4}, Lcom/a/a/c/x$j;-><init>(I[Lcom/a/a/c/x$j;)V

    .line 182
    iput-wide p1, p0, Lcom/a/a/c/x$e;->a:J

    .line 183
    iput-object p3, p0, Lcom/a/a/c/x$e;->b:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/a/a/c/x$e;->a:J

    invoke-static {v0, v2, v3}, Lcom/a/a/c/d;->b(IJ)I

    move-result v0

    .line 189
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/a/a/c/x$e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/c/a;->a(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/c/d;->b(ILcom/a/a/c/a;)I

    move-result v1

    .line 191
    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/a/a/c/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/a/a/c/x$e;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/a/a/c/d;->a(IJ)V

    .line 197
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/a/a/c/x$e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/d;->a(ILcom/a/a/c/a;)V

    .line 198
    return-void
.end method
