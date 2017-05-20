.class Lb/a/a/r;
.super Ljava/lang/Thread;
.source "SocketListener.java"


# static fields
.field static a:Ld/a/b;


# instance fields
.field private final b:Lb/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lb/a/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/r;->a:Ld/a/b;

    return-void
.end method

.method constructor <init>(Lb/a/a/l;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/a/r;->setDaemon(Z)V

    .line 31
    iput-object p1, p0, Lb/a/a/r;->b:Lb/a/a/l;

    .line 32
    return-void

    .line 29
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 37
    const/16 v0, 0x230c

    :try_start_0
    new-array v1, v0, [B

    .line 38
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v1

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 41
    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->J()Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 42
    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->u()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    :cond_1
    :goto_1
    sget-object v0, Lb/a/a/r;->a:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lb/a/a/r;->a:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run() exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 81
    :cond_2
    return-void

    .line 46
    :cond_3
    :try_start_1
    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lb/a/a/k;->a(Ljava/net/DatagramPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0, v2}, Lb/a/a/c;-><init>(Ljava/net/DatagramPacket;)V

    .line 51
    invoke-virtual {v0}, Lb/a/a/c;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 52
    sget-object v3, Lb/a/a/r;->a:Ld/a/b;

    invoke-interface {v3}, Ld/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    sget-object v3, Lb/a/a/r;->a:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/r;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run() JmDNS in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual {v0}, Lb/a/a/c;->t()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    sget v4, Lb/a/a/a/a;->a:I

    if-eq v3, v4, :cond_5

    .line 57
    iget-object v3, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lb/a/a/l;->b(Lb/a/a/c;Ljava/net/InetAddress;I)V

    .line 59
    :cond_5
    iget-object v3, p0, Lb/a/a/r;->b:Lb/a/a/l;

    iget-object v4, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v4}, Lb/a/a/l;->K()Ljava/net/InetAddress;

    move-result-object v4

    sget v5, Lb/a/a/a/a;->a:I

    invoke-virtual {v3, v0, v4, v5}, Lb/a/a/l;->b(Lb/a/a/c;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    sget-object v3, Lb/a/a/r;->a:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/r;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run() exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    iget-object v1, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v1}, Lb/a/a/l;->r()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v1}, Lb/a/a/l;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v1}, Lb/a/a/l;->t()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v1}, Lb/a/a/l;->u()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    sget-object v1, Lb/a/a/r;->a:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/r;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v0}, Lb/a/a/l;->z()V

    goto/16 :goto_1

    .line 61
    :cond_6
    :try_start_3
    iget-object v3, p0, Lb/a/a/r;->b:Lb/a/a/l;

    invoke-virtual {v3, v0}, Lb/a/a/l;->a(Lb/a/a/c;)V

    goto/16 :goto_0

    .line 64
    :cond_7
    sget-object v3, Lb/a/a/r;->a:Ld/a/b;

    invoke-interface {v3}, Ld/a/b;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Lb/a/a/r;->a:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/r;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run() JmDNS in message with error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lb/a/a/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ld/a/b;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
