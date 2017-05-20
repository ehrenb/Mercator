.class Landroid/support/v7/view/menu/v;
.super Landroid/support/v7/view/menu/r;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/c/a/c;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/r;-><init>(Landroid/content/Context;Landroid/support/v4/c/a/a;)V

    .line 38
    return-void
.end method


# virtual methods
.method public b()Landroid/support/v4/c/a/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/view/menu/v;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    return-object v0
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/c/a/c;->clearHeader()V

    .line 78
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/c/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/v;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 60
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 66
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 48
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 54
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 72
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setIcon(I)Landroid/view/SubMenu;

    .line 83
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->b()Landroid/support/v4/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 89
    return-object p0
.end method
