.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "ExcludedUpdateWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private isExcluded:Landroid/widget/CheckBox;

.field private name:Landroid/widget/TextView;

.field private packageName:Landroid/widget/TextView;

.field private versionCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->setSelected(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->icon:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->name:Landroid/widget/TextView;

    .line 33
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->version_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->versionCode:Landroid/widget/TextView;

    .line 34
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->apk_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->packageName:Landroid/widget/TextView;

    .line 35
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->is_excluded:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->isExcluded:Landroid/widget/CheckBox;

    .line 36
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 42
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->versionCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->packageName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->isExcluded:Landroid/widget/CheckBox;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->isExcluded:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    return-void
.end method
