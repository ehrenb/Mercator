.class Landroid/support/b/a/f$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field protected m:[Landroid/support/b/a/c$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    .line 1545
    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/f$d;)V
    .locals 1

    .prologue
    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    .line 1570
    iget-object v0, p1, Landroid/support/b/a/f$d;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/b/a/f$d;->n:Ljava/lang/String;

    .line 1571
    iget v0, p1, Landroid/support/b/a/f$d;->o:I

    iput v0, p0, Landroid/support/b/a/f$d;->o:I

    .line 1572
    iget-object v0, p1, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    invoke-static {v0}, Landroid/support/b/a/c;->a([Landroid/support/b/a/c$b;)[Landroid/support/b/a/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    .line 1573
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 1576
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1577
    iget-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    invoke-static {v0, p1}, Landroid/support/b/a/c$b;->a([Landroid/support/b/a/c$b;Landroid/graphics/Path;)V

    .line 1580
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/support/b/a/c$b;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Landroid/support/b/a/f$d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/b/a/c$b;)V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    invoke-static {v0, p1}, Landroid/support/b/a/c;->a([Landroid/support/b/a/c$b;[Landroid/support/b/a/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    invoke-static {p1}, Landroid/support/b/a/c;->a([Landroid/support/b/a/c$b;)[Landroid/support/b/a/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    .line 1611
    :goto_0
    return-void

    .line 1609
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/f$d;->m:[Landroid/support/b/a/c$b;

    invoke-static {v0, p1}, Landroid/support/b/a/c;->b([Landroid/support/b/a/c$b;[Landroid/support/b/a/c$b;)V

    goto :goto_0
.end method
