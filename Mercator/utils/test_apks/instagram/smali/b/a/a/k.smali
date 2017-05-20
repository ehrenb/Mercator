.class public Lb/a/a/k;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Lb/a/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/k$1;,
        Lb/a/a/k$a;
    }
.end annotation


# static fields
.field private static d:Ld/a/b;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/net/InetAddress;

.field protected c:Ljava/net/NetworkInterface;

.field private final e:Lb/a/a/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lb/a/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/k;->d:Ld/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/l;)V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lb/a/a/k$a;

    invoke-direct {v0, p3}, Lb/a/a/k$a;-><init>(Lb/a/a/l;)V

    iput-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    .line 124
    iput-object p1, p0, Lb/a/a/k;->b:Ljava/net/InetAddress;

    .line 125
    iput-object p2, p0, Lb/a/a/k;->a:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/k;->c:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lb/a/a/k;->d:Ld/a/b;

    const-string v2, "LocalHostInfo() exception "

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ZI)Lb/a/a/h$a;
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lb/a/a/h$c;

    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$c;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/net/InetAddress;)V

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/net/InetAddress;Lb/a/a/l;Ljava/lang/String;)Lb/a/a/k;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    .line 68
    if-eqz p2, :cond_6

    move-object v0, p2

    .line 71
    :goto_0
    if-nez p0, :cond_b

    .line 72
    :try_start_0
    const-string v1, "net.mdns.interface"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_7

    .line 74
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 85
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v2, Lb/a/a/k;->d:Ld/a/b;

    const-string v3, "Could not find any address beside the loopback."

    invoke-interface {v2, v3}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    const-string v2, "in-addr.arpa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 93
    :cond_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_8

    :goto_3
    move-object v0, v1

    .line 103
    :cond_4
    :goto_4
    const-string v1, ".local"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 104
    if-lez v1, :cond_5

    .line 105
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 107
    :cond_5
    const-string v1, "[:%\\.]"

    const-string v2, "-"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Lb/a/a/k;

    invoke-direct {v2, v0, v1, p1}, Lb/a/a/k;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/l;)V

    .line 110
    return-object v2

    .line 68
    :cond_6
    const-string v0, ""

    goto :goto_0

    .line 76
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Lb/a/b$a;->b()Lb/a/b;

    move-result-object v2

    invoke-interface {v2}, Lb/a/b;->a()[Ljava/net/InetAddress;

    move-result-object v2

    .line 80
    array-length v3, v2

    if-lez v3, :cond_0

    .line 81
    const/4 v1, 0x0

    aget-object v1, v2, v1

    goto :goto_1

    .line 93
    :cond_8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    goto :goto_3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lb/a/a/k;->d:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not initialize the host network interface on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "because of an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Lb/a/a/k;->q()Ljava/net/InetAddress;

    move-result-object v0

    .line 99
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_9
    const-string p2, "computer"

    goto/16 :goto_4

    :cond_a
    move-object p2, v0

    goto/16 :goto_3

    :cond_b
    move-object v1, p0

    goto/16 :goto_2
.end method

.method private b(ZI)Lb/a/a/h$a;
    .locals 6

    .prologue
    .line 226
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lb/a/a/h$d;

    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$d;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/net/InetAddress;)V

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(ZI)Lb/a/a/h$e;
    .locals 6

    .prologue
    .line 245
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lb/a/a/h$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".in-addr.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(ZI)Lb/a/a/h$e;
    .locals 6

    .prologue
    .line 252
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Lb/a/a/h$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ip6.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb/a/a/h$e;-><init>(Ljava/lang/String;Lb/a/a/a/d;ZILjava/lang/String;)V

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static q()Ljava/net/InetAddress;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a(Lb/a/a/a/e;ZI)Lb/a/a/h$a;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lb/a/a/k$1;->a:[I

    invoke-virtual {p1}, Lb/a/a/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 209
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->a(ZI)Lb/a/a/h$a;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->b(ZI)Lb/a/a/h$a;

    move-result-object v0

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lb/a/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lb/a/a/a/d;ZI)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/d;",
            "ZI)",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->a(ZI)Lb/a/a/h$a;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lb/a/a/h;->a(Lb/a/a/a/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->b(ZI)Lb/a/a/h$a;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lb/a/a/h;->a(Lb/a/a/a/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    return-object v0
.end method

.method public a(Lb/a/a/b/a;Lb/a/a/a/g;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k$a;->a(Lb/a/a/b/a;Lb/a/a/a/g;)V

    .line 324
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k$a;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/b/a;)Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1}, Lb/a/a/k$a;->a(Lb/a/a/b/a;)Z

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/h$a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1}, Lb/a/a/h$a;->e()Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/h$a;->g()Z

    move-result v2

    const/16 v3, 0xe10

    invoke-virtual {p0, v1, v2, v3}, Lb/a/a/k;->a(Lb/a/a/a/e;ZI)Lb/a/a/h$a;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1, p1}, Lb/a/a/h$a;->b(Lb/a/a/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lb/a/a/h$a;->e(Lb/a/a/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lb/a/a/h$a;->a(Lb/a/a/h;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method

.method a(Ljava/net/DatagramPacket;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 197
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 203
    :cond_2
    return v0
.end method

.method b(Lb/a/a/a/e;ZI)Lb/a/a/h$e;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lb/a/a/k$1;->a:[I

    invoke-virtual {p1}, Lb/a/a/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->c(ZI)Lb/a/a/h$e;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lb/a/a/k;->d(ZI)Lb/a/a/h$e;

    move-result-object v0

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lb/a/a/k;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method public b(Lb/a/a/b/a;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1}, Lb/a/a/k$a;->b(Lb/a/a/b/a;)V

    .line 308
    return-void
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lb/a/a/k;->b:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k$a;->b(J)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lb/a/a/b/a;Lb/a/a/a/g;)Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/k$a;->b(Lb/a/a/b/a;Lb/a/a/a/g;)Z

    move-result v0

    return v0
.end method

.method c()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lb/a/a/k;->b:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Ljava/net/Inet6Address;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lb/a/a/k;->b:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lb/a/a/k;->c:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lb/a/a/n$b;->a()Lb/a/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/k;->a:Ljava/lang/String;

    sget-object v3, Lb/a/a/n$c;->a:Lb/a/a/n$c;

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/n;->a(Ljava/net/InetAddress;Ljava/lang/String;Lb/a/a/n$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/k;->a:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lb/a/a/k;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->b()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->c()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->d()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->e()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->f()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->h()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->i()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->j()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->k()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v0}, Lb/a/a/k$a;->l()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    const-string v0, "local host info["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lb/a/a/k;->e()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/a/a/k;->e()Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/k;->b()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v0, p0, Lb/a/a/k;->e:Lb/a/a/k$a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    const-string v0, "no name"

    goto :goto_0

    .line 264
    :cond_1
    const-string v0, "???"

    goto :goto_1

    .line 266
    :cond_2
    const-string v0, "no address"

    goto :goto_2
.end method
