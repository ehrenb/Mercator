.class public Lb/a/a/h$c;
.super Lb/a/a/h$a;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/net/InetAddress;)V
    .locals 7

    .prologue
    .line 203
    sget-object v2, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/h$a;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZILjava/net/InetAddress;)V

    .line 204
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V
    .locals 7

    .prologue
    .line 207
    sget-object v2, Lb/a/a/a/e;->b:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/h$a;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI[B)V

    .line 208
    return-void
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 2

    .prologue
    .line 235
    invoke-super {p0, p1}, Lb/a/a/h$a;->a(Z)Lb/a/d;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    .line 236
    iget-object v1, p0, Lb/a/a/h$c;->c:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Lb/a/a/q;->a(Ljava/net/Inet4Address;)V

    .line 237
    return-object v0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lb/a/a/h$c;->c:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lb/a/a/h$c;->c:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 215
    iget-object v1, p0, Lb/a/a/h$c;->c:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 223
    :goto_0
    array-length v1, v0

    .line 224
    invoke-virtual {p1, v0, v3, v1}, Lb/a/a/f$a;->a([BII)V

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    new-array v1, v4, [B

    .line 221
    const/16 v2, 0xc

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method
