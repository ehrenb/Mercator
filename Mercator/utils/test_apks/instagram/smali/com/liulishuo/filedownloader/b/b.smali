.class public Lcom/liulishuo/filedownloader/b/b;
.super Lcom/liulishuo/filedownloader/b/c;
.source "DownloadServiceConnectChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/b/b$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/liulishuo/filedownloader/b/b$a;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/b/b$a;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/filedownloader/b/b$a;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "event.service.connect.changed"

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/b/c;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/b;->c:Lcom/liulishuo/filedownloader/b/b$a;

    .line 30
    iput-object p2, p0, Lcom/liulishuo/filedownloader/b/b;->d:Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/b/b$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->c:Lcom/liulishuo/filedownloader/b/b$a;

    return-object v0
.end method
