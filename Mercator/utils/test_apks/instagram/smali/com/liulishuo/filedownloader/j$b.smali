.class Lcom/liulishuo/filedownloader/j$b;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/j$1;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j$b;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liulishuo/filedownloader/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/s;

    .line 169
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/s;->b()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/filedownloader/s;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/s;->b()V

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/j$b;->a(Ljava/util/ArrayList;)V

    .line 161
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/j;)V

    goto :goto_0
.end method
