.class public final Lcom/b/b/ch$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ch;
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
        "Lcom/b/b/ch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    .line 1056
    if-nez p1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    new-instance v2, Lcom/b/b/ch$a$2;

    invoke-direct {v2, p0, p1}, Lcom/b/b/ch$a$2;-><init>(Lcom/b/b/ch$a;Ljava/io/InputStream;)V

    .line 1067
    new-instance v1, Lcom/b/b/ch;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/b/b/ch;-><init>(B)V

    .line 1069
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 1070
    if-eqz v3, :cond_0

    .line 1074
    new-array v0, v3, [B

    .line 2015
    iput-object v0, v1, Lcom/b/b/ch;->b:[B

    .line 3015
    iget-object v0, v1, Lcom/b/b/ch;->b:[B

    .line 1075
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1077
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-object v0, v1

    .line 25
    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p2, Lcom/b/b/ch;

    .line 3033
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    new-instance v0, Lcom/b/b/ch$a$1;

    invoke-direct {v0, p0, p1}, Lcom/b/b/ch$a$1;-><init>(Lcom/b/b/ch$a;Ljava/io/OutputStream;)V

    .line 4015
    iget-object v1, p2, Lcom/b/b/ch;->b:[B

    .line 3044
    array-length v1, v1

    .line 3046
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5015
    iget-object v1, p2, Lcom/b/b/ch;->b:[B

    .line 3047
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 3048
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3050
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
