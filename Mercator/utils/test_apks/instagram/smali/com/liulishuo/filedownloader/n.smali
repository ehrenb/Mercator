.class Lcom/liulishuo/filedownloader/n;
.super Ljava/lang/Object;
.source "FileDownloadServiceSharedTransmit.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/f$a;
.implements Lcom/liulishuo/filedownloader/t;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/liulishuo/filedownloader/services/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/liulishuo/filedownloader/n;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/n;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    .line 221
    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/b/b;

    sget-object v2, Lcom/liulishuo/filedownloader/b/b$a;->b:Lcom/liulishuo/filedownloader/b/b$a;

    sget-object v3, Lcom/liulishuo/filedownloader/n;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/b/b;-><init>(Lcom/liulishuo/filedownloader/b/b$a;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/b/c;)V

    .line 225
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/n;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/liulishuo/filedownloader/n;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/services/f;)V
    .locals 4

    .prologue
    .line 204
    iput-object p1, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    .line 205
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->b:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    iget-object v1, p0, Lcom/liulishuo/filedownloader/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 209
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/b/b;

    sget-object v2, Lcom/liulishuo/filedownloader/b/b$a;->a:Lcom/liulishuo/filedownloader/b/b$a;

    sget-object v3, Lcom/liulishuo/filedownloader/n;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/b/b;-><init>(Lcom/liulishuo/filedownloader/b/b$a;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/b/c;)V

    .line 216
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->a(I)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/f;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 10

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/f;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)B
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->b(I)B

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/f;->e(I)B

    move-result v0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->c(I)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/f;->f(I)Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/liulishuo/filedownloader/e/a;->a()V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/f;->a()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liulishuo/filedownloader/n;->c:Lcom/liulishuo/filedownloader/services/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
