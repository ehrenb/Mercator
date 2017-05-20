.class public Lcom/liulishuo/filedownloader/m;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/services/d$a;

.field private final b:Lcom/liulishuo/filedownloader/t;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/n;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/n;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    .line 60
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/o;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/o;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/m$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/m;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/liulishuo/filedownloader/m$a;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/liulishuo/filedownloader/services/f$a;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    instance-of v0, v0, Lcom/liulishuo/filedownloader/n;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/liulishuo/filedownloader/m;->a()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    check-cast v0, Lcom/liulishuo/filedownloader/services/f$a;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/t;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method a(Lcom/liulishuo/filedownloader/services/d$a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liulishuo/filedownloader/m;->a:Lcom/liulishuo/filedownloader/services/d$a;

    .line 64
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 10

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/liulishuo/filedownloader/t;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    return v0
.end method

.method public b(I)B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->b(I)B

    move-result v0

    return v0
.end method

.method public c()Lcom/liulishuo/filedownloader/services/d;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/liulishuo/filedownloader/services/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/m;->a:Lcom/liulishuo/filedownloader/services/d$a;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/d;-><init>(Lcom/liulishuo/filedownloader/services/d$a;)V

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/t;->d()V

    .line 108
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liulishuo/filedownloader/m;->b:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/t;->e()Z

    move-result v0

    return v0
.end method
