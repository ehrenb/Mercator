.class Lcom/astuetz/PagerSlidingTabStrip$d;
.super Landroid/database/DataSetObserver;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/astuetz/PagerSlidingTabStrip;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 1

    .prologue
    .line 514
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$d;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip$d;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$d;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip$d;->b:Z

    .line 525
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip$d;->b:Z

    return v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$d;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a()V

    .line 521
    return-void
.end method
