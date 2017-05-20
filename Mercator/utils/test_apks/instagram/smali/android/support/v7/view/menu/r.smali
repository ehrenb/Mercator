.class Landroid/support/v7/view/menu/r;
.super Landroid/support/v7/view/menu/c;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/view/menu/c",
        "<",
        "Landroid/support/v4/c/a/a;",
        ">;",
        "Landroid/view/Menu;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/c/a/a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/c;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/c/a/a;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/c/a/a;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 10

    .prologue
    .line 81
    const/4 v9, 0x0

    .line 82
    if-eqz p8, :cond_0

    .line 83
    move-object/from16 v0, p8

    array-length v1, v0

    new-array v9, v1, [Landroid/view/MenuItem;

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/c/a/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 87
    invoke-interface/range {v1 .. v9}, Landroid/support/v4/c/a/a;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v2

    .line 89
    if-eqz v9, :cond_1

    .line 90
    const/4 v1, 0x0

    array-length v3, v9

    :goto_0
    if-ge v1, v3, :cond_1

    .line 91
    aget-object v4, v9, v1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, p8, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    .line 75
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/c/a/a;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/c/a/a;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/view/menu/r;->a()V

    .line 113
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0}, Landroid/support/v4/c/a/a;->clear()V

    .line 114
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0}, Landroid/support/v4/c/a/a;->close()V

    .line 154
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/r;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0}, Landroid/support/v4/c/a/a;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/c/a/a;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/c/a/a;->performIdentifierAction(II)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/c/a/a;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public removeGroup(I)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/r;->a(I)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->removeGroup(I)V

    .line 108
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/r;->b(I)V

    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->removeItem(I)V

    .line 102
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/c/a/a;->setGroupCheckable(IZZ)V

    .line 119
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/c/a/a;->setGroupEnabled(IZ)V

    .line 129
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/c/a/a;->setGroupVisible(IZ)V

    .line 124
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/a;->setQwertyMode(Z)V

    .line 174
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-interface {v0}, Landroid/support/v4/c/a/a;->size()I

    move-result v0

    return v0
.end method
