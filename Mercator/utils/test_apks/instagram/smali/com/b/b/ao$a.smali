.class public final Lcom/b/b/ao$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/co",
        "<",
        "Lcom/b/b/ao;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    .line 1056
    if-nez p1, :cond_1

    .line 1057
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    new-instance v1, Lcom/b/b/ao$a$2;

    invoke-direct {v1, p0, p1}, Lcom/b/b/ao$a$2;-><init>(Lcom/b/b/ao$a;Ljava/io/InputStream;)V

    .line 1067
    new-instance v0, Lcom/b/b/ao;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/b/b/ao;-><init>(B)V

    .line 1070
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1071
    if-lez v2, :cond_0

    .line 1072
    new-array v2, v2, [B

    .line 1073
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1076
    iput-object v2, v0, Lcom/b/b/ao;->a:[B

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p2, Lcom/b/b/ao;

    .line 2029
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    new-instance v1, Lcom/b/b/ao$a$1;

    invoke-direct {v1, p0, p1}, Lcom/b/b/ao$a$1;-><init>(Lcom/b/b/ao$a;Ljava/io/OutputStream;)V

    .line 2040
    const/4 v0, 0x0

    .line 2041
    iget-object v2, p2, Lcom/b/b/ao;->a:[B

    if-eqz v2, :cond_2

    .line 2042
    iget-object v0, p2, Lcom/b/b/ao;->a:[B

    array-length v0, v0

    .line 2046
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2047
    if-lez v0, :cond_3

    .line 2048
    iget-object v0, p2, Lcom/b/b/ao;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2051
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
