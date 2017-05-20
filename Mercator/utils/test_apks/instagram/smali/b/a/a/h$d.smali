.class public Lb/a/a/h$d;
.super Lb/a/a/h$a;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/net/InetAddress;)V
    .locals 7

    .prologue
    .line 245
    sget-object v2, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/h$a;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZILjava/net/InetAddress;)V

    .line 246
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lb/a/a/a/d;ZI[B)V
    .locals 7

    .prologue
    .line 249
    sget-object v2, Lb/a/a/a/e;->C:Lb/a/a/a/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lb/a/a/h$a;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;ZI[B)V

    .line 250
    return-void
.end method


# virtual methods
.method public a(Z)Lb/a/d;
    .locals 2

    .prologue
    .line 280
    invoke-super {p0, p1}, Lb/a/a/h$a;->a(Z)Lb/a/d;

    move-result-object v0

    check-cast v0, Lb/a/a/q;

    .line 281
    iget-object v1, p0, Lb/a/a/h$d;->c:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Lb/a/a/q;->a(Ljava/net/Inet6Address;)V

    .line 282
    return-object v0
.end method

.method a(Lb/a/a/f$a;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lb/a/a/h$d;->c:Ljava/net/InetAddress;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lb/a/a/h$d;->c:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 257
    iget-object v0, p0, Lb/a/a/h$d;->c:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    .line 259
    new-array v0, v5, [B

    move v2, v3

    .line 260
    :goto_0
    if-ge v2, v5, :cond_2

    .line 261
    const/16 v4, 0xb

    if-ge v2, v4, :cond_0

    .line 262
    add-int/lit8 v4, v2, -0xc

    aget-byte v4, v1, v4

    aput-byte v4, v0, v2

    .line 260
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_0
    aput-byte v3, v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 268
    :cond_2
    array-length v1, v0

    .line 269
    invoke-virtual {p1, v0, v3, v1}, Lb/a/a/f$a;->a([BII)V

    .line 271
    :cond_3
    return-void
.end method
