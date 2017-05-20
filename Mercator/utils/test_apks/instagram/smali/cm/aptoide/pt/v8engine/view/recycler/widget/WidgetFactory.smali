.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;
.super Ljava/lang/Object;
.source "WidgetFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static columnSize:I

.field private static orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->TAG:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->computeColumnSize()V

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static computeColumnSize()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->getDisplayablesSizes()[I

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$MathU;->leastCommonMultiple([I)I

    move-result v0

    sput v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->columnSize:I

    .line 55
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCurrentOrientation()I

    move-result v0

    sput v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->orientation:I

    .line 56
    return-void
.end method

.method public static getColumnSize()I
    .locals 2

    .prologue
    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->orientation:I

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCurrentOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 47
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->computeColumnSize()V

    .line 50
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetFactory;->columnSize:I

    return v0
.end method

.method private static getDisplayablesSizes()[I
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getDisplayableWidgetMapping()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->getCachedDisplayables()Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 64
    const/4 v0, 0x0

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 67
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getPerLineCount()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    return-object v3
.end method

.method public static newBaseViewHolder(Landroid/view/ViewGroup;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getDisplayableWidgetMapping()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->newWidget(Landroid/view/View;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    move-result-object v0

    .line 42
    return-object v0
.end method
