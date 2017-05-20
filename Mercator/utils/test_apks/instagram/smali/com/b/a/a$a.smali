.class public Lcom/b/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/b/a/b;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    sput-object v0, Lcom/b/a/a$a;->a:Lcom/b/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-boolean v2, p0, Lcom/b/a/a$a;->b:Z

    .line 1300
    const/4 v0, 0x5

    iput v0, p0, Lcom/b/a/a$a;->c:I

    .line 1303
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/b/a/a$a;->d:J

    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a$a;->e:Z

    .line 1309
    iput-boolean v2, p0, Lcom/b/a/a$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/b/a/a$a;
    .locals 0

    .prologue
    .line 1332
    iput-boolean p1, p0, Lcom/b/a/a$a;->b:Z

    .line 1333
    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1397
    sget-object v1, Lcom/b/a/a$a;->a:Lcom/b/a/b;

    iget-boolean v2, p0, Lcom/b/a/a$a;->b:Z

    iget v3, p0, Lcom/b/a/a$a;->c:I

    iget-wide v4, p0, Lcom/b/a/a$a;->d:J

    iget-boolean v6, p0, Lcom/b/a/a$a;->e:Z

    iget-boolean v7, p0, Lcom/b/a/a$a;->f:Z

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lcom/b/a/a;->a(Lcom/b/a/b;ZIJZZLandroid/content/Context;Ljava/lang/String;)V

    .line 1405
    return-void
.end method
