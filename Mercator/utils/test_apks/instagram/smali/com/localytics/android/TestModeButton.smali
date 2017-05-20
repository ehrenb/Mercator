.class public final Lcom/localytics/android/TestModeButton;
.super Landroid/app/DialogFragment;
.source "TestModeButton.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeButton$TestModeDialog;
    }
.end annotation


# static fields
.field static final TEST_MODE_BUTTON_TAG:Ljava/lang/String; = "marketing_test_mode_button"


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/localytics/android/MarketingCallable;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/TestModeButton;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/TestModeButton;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static newInstance()Lcom/localytics/android/TestModeButton;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/localytics/android/TestModeButton;

    invoke-direct {v0}, Lcom/localytics/android/TestModeButton;-><init>()V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/localytics/android/TestModeButton;->setRetainInstance(Z)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 150
    const-string v0, "[TestModeButton]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 151
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 115
    const-string v0, "[TestModeButton]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 116
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "[TestModeButton]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 130
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 136
    const-string v0, "[TestModeButton]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/localytics/android/TestModeButton$TestModeDialog;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog;-><init>(Lcom/localytics/android/TestModeButton;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    const-string v0, "[TestModeButton]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "[TestModeButton]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 103
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "[TestModeButton]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 179
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 180
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "[TestModeButton]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 124
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "[TestModeButton]: onDismiss"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "[TestModeButton]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "[TestModeButton]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 89
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 164
    const-string v0, "[TestModeButton]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 165
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "[TestModeButton]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "[TestModeButton]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 173
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 80
    const-string v0, "[TestModeButton]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/localytics/android/MarketingCallable;",
            ">;)",
            "Lcom/localytics/android/TestModeButton;"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;

    .line 185
    return-object p0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    return-void
.end method
