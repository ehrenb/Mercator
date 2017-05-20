.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "DisplayableGroup.java"


# annotations
.annotation runtime Lcm/aptoide/pt/annotation/Ignore;
.end annotation


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;Z)V

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->children:Ljava/util/List;

    .line 22
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->computeLeftSpaces()V

    .line 23
    :cond_0
    return-void
.end method

.method private computeLeftSpaces()V
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->getColumnSize()I

    move-result v2

    .line 27
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 30
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getSpanSize()I

    move-result v4

    add-int/2addr v4, v1

    if-le v4, v2, :cond_0

    .line 31
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getSpanSize()I

    move-result v0

    :goto_1
    move v1, v0

    .line 35
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getSpanSize()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 37
    :cond_1
    if-ge v1, v2, :cond_2

    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->children:Ljava/util/List;

    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    sub-int v1, v2, v1

    invoke-direct {v3, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;->children:Ljava/util/List;

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getDefaultPerLineCount()I
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDefaultPerLineCount() on DisplayableGroup should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLayout()I
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getViewLayout() on DisplayableGroup should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
