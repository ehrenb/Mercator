.class public Leu/chainfire/libsuperuser/c;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Leu/chainfire/libsuperuser/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/c$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    iput-object v0, p0, Leu/chainfire/libsuperuser/c;->a:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Leu/chainfire/libsuperuser/c;->b:Ljava/io/BufferedReader;

    .line 47
    iput-object v0, p0, Leu/chainfire/libsuperuser/c;->c:Ljava/util/List;

    .line 48
    iput-object v0, p0, Leu/chainfire/libsuperuser/c;->d:Leu/chainfire/libsuperuser/c$a;

    .line 79
    iput-object p1, p0, Leu/chainfire/libsuperuser/c;->a:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/c;->b:Ljava/io/BufferedReader;

    .line 81
    iput-object p3, p0, Leu/chainfire/libsuperuser/c;->d:Leu/chainfire/libsuperuser/c$a;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/c;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leu/chainfire/libsuperuser/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/a;->c(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Leu/chainfire/libsuperuser/c;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/chainfire/libsuperuser/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/c;->d:Leu/chainfire/libsuperuser/c$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/libsuperuser/c;->d:Leu/chainfire/libsuperuser/c$a;

    invoke-interface {v1, v0}, Leu/chainfire/libsuperuser/c$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 100
    :cond_2
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/c;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_1
    return-void

    .line 101
    :catch_1
    move-exception v0

    goto :goto_1
.end method
