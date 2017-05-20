.class Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;
.super Ljava/lang/Object;
.source "InstallWarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewOnClickListenerComposite"
.end annotation


# instance fields
.field private final first:Landroid/view/View$OnClickListener;

.field private final second:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;->first:Landroid/view/View$OnClickListener;

    .line 135
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;->second:Landroid/view/View$OnClickListener;

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;->first:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;->second:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 141
    return-void
.end method
